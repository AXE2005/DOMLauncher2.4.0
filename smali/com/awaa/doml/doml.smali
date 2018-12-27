.class public Lcom/awaa/doml/doml;
.super Lorg/apache/cordova/CordovaPlugin;
.source "doml.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private restartApp()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/awaa/doml/doml;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    iget-object v0, p0, Lcom/awaa/doml/doml;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/awaa/doml/doml;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/awaa/doml/doml;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v12, "getDMD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 25
    .local v10, "sdcard":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v12, "/DOMLauncher"

    invoke-direct {v4, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 27
    .local v5, "files":[Ljava/io/File;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 29
    .local v8, "jArray":Lorg/json/JSONArray;
    array-length v13, v5

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_3

    .line 37
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "returnVal"

    invoke-virtual {v12, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 42
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v8    # "jArray":Lorg/json/JSONArray;
    .end local v10    # "sdcard":Ljava/io/File;
    :cond_0
    const-string v12, "restart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/awaa/doml/doml;->restartApp()V

    .line 47
    :cond_1
    const-string v12, "setDMD"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 49
    .restart local v10    # "sdcard":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/awaa/doml/doml;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v12}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 50
    .local v11, "sharedPrefs":Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "dmdName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/DOMLauncher/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/index.html"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "dmd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 54
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 55
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "active"

    invoke-interface {v3, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/awaa/doml/doml;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "window.location = \'file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DOMLauncher/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/index.html\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 64
    .end local v1    # "dmd":Ljava/io/File;
    .end local v2    # "dmdName":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "sdcard":Ljava/io/File;
    .end local v11    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    const/4 v12, 0x1

    return v12

    .line 29
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v8    # "jArray":Lorg/json/JSONArray;
    .restart local v10    # "sdcard":Ljava/io/File;
    :cond_3
    aget-object v7, v5, v12

    .line 30
    .local v7, "inFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "folderName":[Ljava/lang/String;
    array-length v14, v6

    add-int/lit8 v14, v14, -0x1

    aget-object v9, v6, v14

    .line 33
    .local v9, "lastItem":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .end local v6    # "folderName":[Ljava/lang/String;
    .end local v9    # "lastItem":Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 59
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v7    # "inFile":Ljava/io/File;
    .end local v8    # "jArray":Lorg/json/JSONArray;
    .restart local v1    # "dmd":Ljava/io/File;
    .restart local v2    # "dmdName":Ljava/lang/String;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_5
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "returnVal"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1
.end method
