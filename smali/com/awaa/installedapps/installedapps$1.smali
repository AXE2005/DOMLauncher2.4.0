.class Lcom/awaa/installedapps/installedapps$1;
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

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/awaa/installedapps/installedapps;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/awaa/installedapps/installedapps$1;->this$0:Lcom/awaa/installedapps/installedapps;

    iput-object p2, p0, Lcom/awaa/installedapps/installedapps$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/awaa/installedapps/installedapps$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 35
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "appPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 38
    .local v2, "appDir":Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v15, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 39
    .local v16, "pmi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 44
    .end local v16    # "pmi":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v13, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/icons"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v13, "iconDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 46
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 52
    .local v7, "choosenApp":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 54
    .local v3, "appIcon":Landroid/graphics/drawable/Drawable;
    new-instance v10, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v10, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 58
    .local v11, "foStream":Ljava/io/FileOutputStream;
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 60
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v14, "oStream":Ljava/io/ByteArrayOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 65
    .local v5, "b":[B
    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    .end local v11    # "foStream":Ljava/io/FileOutputStream;
    .local v12, "foStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {v14, v12}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v11, v12

    .line 74
    .end local v12    # "foStream":Ljava/io/FileOutputStream;
    .restart local v11    # "foStream":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 75
    .restart local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 76
    const/4 v5, 0x0

    :try_start_4
    check-cast v5, [B
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    const/4 v6, 0x0

    .line 81
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v17, v0

    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    const-string v19, "returnVal"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "file://"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/icons/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$1;->val$packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 91
    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "b":[B
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "choosenApp":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "foStream":Ljava/io/FileOutputStream;
    .end local v14    # "oStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-void

    .line 70
    .restart local v5    # "b":[B
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "choosenApp":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "foStream":Ljava/io/FileOutputStream;
    .restart local v14    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v9

    .line 72
    .local v9, "e1":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 86
    .end local v5    # "b":[B
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "choosenApp":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e1":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "foStream":Ljava/io/FileOutputStream;
    .end local v14    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v8

    .line 88
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "b":[B
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "choosenApp":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "foStream":Ljava/io/FileOutputStream;
    .restart local v14    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v8

    .line 84
    .local v8, "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 70
    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v11    # "foStream":Ljava/io/FileOutputStream;
    .restart local v12    # "foStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    move-object v11, v12

    .end local v12    # "foStream":Ljava/io/FileOutputStream;
    .restart local v11    # "foStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 40
    .end local v5    # "b":[B
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "choosenApp":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "foStream":Ljava/io/FileOutputStream;
    .end local v13    # "iconDir":Ljava/io/File;
    .end local v14    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v17

    goto/16 :goto_0
.end method
