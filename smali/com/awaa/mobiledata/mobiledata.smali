.class public Lcom/awaa/mobiledata/mobiledata;
.super Lorg/apache/cordova/CordovaPlugin;
.source "mobiledata.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v10, p0, Lcom/awaa/mobiledata/mobiledata;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 26
    .local v3, "ctx":Landroid/content/Context;
    const-string v10, "connectivity"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 27
    .local v1, "conman":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 28
    .local v2, "conmanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "mService"

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 29
    .local v7, "iConnectivityManagerField":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 31
    .local v5, "iConnectivityManager":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 33
    .local v6, "iConnectivityManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "setMobileDataEnabled"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 34
    .local v8, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    const-string v10, "phone"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 38
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v10, "check"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 40
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 41
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "enabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 44
    :cond_0
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    if-nez v10, :cond_1

    .line 45
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "disabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 48
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 49
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "enabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 53
    :cond_2
    const-string v10, "toggle"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 54
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 55
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "disabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 59
    :cond_3
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    if-nez v10, :cond_4

    .line 60
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "enabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 65
    :cond_4
    const-string v10, "enable"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 66
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "enabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 71
    :cond_5
    const-string v10, "disable"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 72
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "returnVal"

    const-string v12, "disabled"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6

    .line 98
    .end local v1    # "conman":Landroid/net/ConnectivityManager;
    .end local v2    # "conmanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v5    # "iConnectivityManager":Ljava/lang/Object;
    .end local v6    # "iConnectivityManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "iConnectivityManagerField":Ljava/lang/reflect/Field;
    .end local v8    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 76
    :catch_0
    move-exception v4

    .line 78
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 87
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method
