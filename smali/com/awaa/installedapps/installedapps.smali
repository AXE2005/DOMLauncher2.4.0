.class public Lcom/awaa/installedapps/installedapps;
.super Lorg/apache/cordova/CordovaPlugin;
.source "installedapps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 29
    const-string v1, "getIcon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/awaa/installedapps/installedapps$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/awaa/installedapps/installedapps$1;-><init>(Lcom/awaa/installedapps/installedapps;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    const-string v1, "getIcons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/awaa/installedapps/installedapps$2;

    invoke-direct {v2, p0, p3}, Lcom/awaa/installedapps/installedapps$2;-><init>(Lcom/awaa/installedapps/installedapps;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "getApps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/awaa/installedapps/installedapps$3;

    invoke-direct {v2, p0, p3}, Lcom/awaa/installedapps/installedapps$3;-><init>(Lcom/awaa/installedapps/installedapps;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
