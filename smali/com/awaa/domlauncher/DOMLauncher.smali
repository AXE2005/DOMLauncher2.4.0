.class public Lcom/awaa/domlauncher/DOMLauncher;
.super Lorg/apache/cordova/CordovaActivity;
.source "DOMLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method

.method private getActive()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/awaa/domlauncher/DOMLauncher;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 67
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v4, "active"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    const-string v5, "active"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 71
    .local v1, "fakeArray":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v4

    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    .end local v1    # "fakeArray":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 74
    .restart local v1    # "fakeArray":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    const-string v4, "therewasanerror"

    goto :goto_0

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "fakeArray":Ljava/lang/String;
    :cond_0
    const-string v4, "NoDMDINSTALLED"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 42
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->clearCache()V

    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 44
    .local v4, "sdcard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DOMLauncher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lorg/apache/cordova/CordovaActivity;->loadUrl(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/awaa/domlauncher/DOMLauncher;->getActive()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "dmdSetting":Ljava/lang/String;
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "dmdName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/DOMLauncher/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/index.html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v1, "dmdLocation":Ljava/io/File;
    sget-object v5, Lcom/awaa/domlauncher/DOMLauncher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Activity:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/DOMLauncher/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/index.html"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file:///"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lorg/apache/cordova/CordovaActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lorg/apache/cordova/CordovaActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "dmdLocation":Ljava/io/File;
    .end local v2    # "dmdName":Ljava/lang/String;
    .end local v3    # "dmdSetting":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lorg/apache/cordova/CordovaActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
