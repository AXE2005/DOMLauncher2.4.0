.class Lcom/awaa/installedapps/installedapps$3;
.super Ljava/lang/Object;
.source "installedapps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/awaa/installedapps/installedapps;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/awaa/installedapps/installedapps;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/awaa/installedapps/installedapps;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/awaa/installedapps/installedapps$3;->this$0:Lcom/awaa/installedapps/installedapps;

    iput-object p2, p0, Lcom/awaa/installedapps/installedapps$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$3;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 194
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$3;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "appPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 197
    .local v4, "appDir":Ljava/lang/String;
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 198
    .local v16, "pmi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    .end local v16    # "pmi":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 206
    .local v10, "jArray":Lorg/json/JSONArray;
    const/16 v18, 0x80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v13

    .line 208
    .local v13, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 240
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    .line 243
    .local v17, "results":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v18, v0

    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    const-string v20, "returnVal"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_2
    return-void

    .line 208
    .end local v17    # "results":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 211
    .local v12, "packageInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v14, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 213
    .local v14, "pkgName":Ljava/lang/String;
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 222
    .local v3, "appActivity":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {v12, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "appName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "appIntent":[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v6, v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    aget-object v21, v6, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "appIFormated":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v11, "json":Lorg/json/JSONObject;
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "activity"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "path"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "file://"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/icons/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 233
    .end local v3    # "appActivity":Landroid/content/Intent;
    .end local v5    # "appIFormated":Ljava/lang/String;
    .end local v6    # "appIntent":[Ljava/lang/String;
    .end local v7    # "appName":Ljava/lang/String;
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v14    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 235
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 244
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "results":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 246
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 199
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "jArray":Lorg/json/JSONArray;
    .end local v13    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "results":Ljava/lang/String;
    :catch_2
    move-exception v18

    goto/16 :goto_0
.end method
