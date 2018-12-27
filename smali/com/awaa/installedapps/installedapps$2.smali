.class Lcom/awaa/installedapps/installedapps$2;
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
    iput-object p1, p0, Lcom/awaa/installedapps/installedapps$2;->this$0:Lcom/awaa/installedapps/installedapps;

    iput-object p2, p0, Lcom/awaa/installedapps/installedapps$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$2;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 102
    .local v24, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$2;->this$0:Lcom/awaa/installedapps/installedapps;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "appPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 105
    .local v4, "appDir":Ljava/lang/String;
    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v25

    .line 106
    .local v25, "pmi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 111
    .end local v25    # "pmi":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v17, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "/icons"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v17, "iconDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_0

    .line 113
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_0
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v18, "jArray":Lorg/json/JSONArray;
    const/16 v27, 0x80

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v22

    .line 121
    .local v22, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_2

    .line 171
    const/16 v22, 0x0

    .line 172
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 173
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    .line 175
    .local v26, "results":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/awaa/installedapps/installedapps$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v27, v0

    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    const-string v29, "returnVal"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    :goto_2
    return-void

    .line 121
    .end local v26    # "results":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    .line 123
    .local v21, "packageInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 126
    .local v3, "appActivity":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 127
    :try_start_2
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 128
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "appName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 133
    .local v6, "appIcon":Landroid/graphics/drawable/Drawable;
    new-instance v14, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "/"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".png"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v14, "file":Ljava/io/File;
    const/4 v15, 0x0

    .line 135
    .local v15, "foStream":Ljava/io/FileOutputStream;
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 136
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v20, "oStream":Ljava/io/ByteArrayOutputStream;
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 140
    .local v10, "b":[B
    :try_start_3
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    .end local v15    # "foStream":Ljava/io/FileOutputStream;
    .local v16, "foStream":Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 144
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v15, v16

    .line 149
    .end local v16    # "foStream":Ljava/io/FileOutputStream;
    .restart local v15    # "foStream":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v6, 0x0

    .line 150
    .restart local v6    # "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 151
    const/4 v10, 0x0

    :try_start_5
    check-cast v10, [B

    .line 152
    const/4 v15, 0x0

    .line 153
    const/16 v20, 0x0

    .line 154
    const/4 v11, 0x0

    .line 158
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "appIntent":[Ljava/lang/String;
    const/16 v28, 0x1

    aget-object v28, v7, v28

    const/16 v29, 0x0

    const/16 v30, 0x1

    aget-object v30, v7, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x2

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "appIFormated":Ljava/lang/String;
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v19, "json":Lorg/json/JSONObject;
    const-string v28, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "activity"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "package"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "path"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "file://"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/icons/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ".png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 166
    .end local v5    # "appIFormated":Ljava/lang/String;
    .end local v6    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "appIntent":[Ljava/lang/String;
    .end local v8    # "appName":Ljava/lang/String;
    .end local v10    # "b":[B
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "foStream":Ljava/io/FileOutputStream;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "oStream":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 168
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 145
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "appName":Ljava/lang/String;
    .restart local v10    # "b":[B
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "foStream":Ljava/io/FileOutputStream;
    .restart local v20    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 147
    .local v13, "e1":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 176
    .end local v3    # "appActivity":Landroid/content/Intent;
    .end local v8    # "appName":Ljava/lang/String;
    .end local v10    # "b":[B
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "e1":Ljava/io/IOException;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "foStream":Ljava/io/FileOutputStream;
    .end local v20    # "oStream":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "pkgName":Ljava/lang/String;
    .restart local v26    # "results":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 178
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 145
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v26    # "results":Ljava/lang/String;
    .restart local v3    # "appActivity":Landroid/content/Intent;
    .restart local v8    # "appName":Ljava/lang/String;
    .restart local v10    # "b":[B
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v16    # "foStream":Ljava/io/FileOutputStream;
    .restart local v20    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :catch_3
    move-exception v13

    move-object/from16 v15, v16

    .end local v16    # "foStream":Ljava/io/FileOutputStream;
    .restart local v15    # "foStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 107
    .end local v3    # "appActivity":Landroid/content/Intent;
    .end local v8    # "appName":Ljava/lang/String;
    .end local v10    # "b":[B
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "foStream":Ljava/io/FileOutputStream;
    .end local v17    # "iconDir":Ljava/io/File;
    .end local v18    # "jArray":Lorg/json/JSONArray;
    .end local v20    # "oStream":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "pkgName":Ljava/lang/String;
    :catch_4
    move-exception v27

    goto/16 :goto_0
.end method
