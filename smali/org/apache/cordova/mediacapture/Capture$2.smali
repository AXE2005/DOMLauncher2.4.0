.class Lorg/apache/cordova/mediacapture/Capture$2;
.super Ljava/lang/Object;
.source "Capture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/mediacapture/Capture;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/mediacapture/Capture;

.field private final synthetic val$that:Lorg/apache/cordova/mediacapture/Capture;


# direct methods
.method constructor <init>(Lorg/apache/cordova/mediacapture/Capture;Lorg/apache/cordova/mediacapture/Capture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    iput-object p2, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 309
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 311
    const/4 v6, 0x0

    .line 313
    .local v6, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    iget-object v8, v8, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 324
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v9}, Lorg/apache/cordova/mediacapture/Capture;->access$6(Lorg/apache/cordova/mediacapture/Capture;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/Capture.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 325
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    iget-object v8, v8, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 326
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 328
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    .line 331
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 332
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 333
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 336
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v8}, Lorg/apache/cordova/mediacapture/Capture;->access$0(Lorg/apache/cordova/mediacapture/Capture;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v9, v6}, Lorg/apache/cordova/mediacapture/Capture;->access$1(Lorg/apache/cordova/mediacapture/Capture;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 338
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v8}, Lorg/apache/cordova/mediacapture/Capture;->access$7(Lorg/apache/cordova/mediacapture/Capture;)V

    .line 340
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v8}, Lorg/apache/cordova/mediacapture/Capture;->access$0(Lorg/apache/cordova/mediacapture/Capture;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v10}, Lorg/apache/cordova/mediacapture/Capture;->access$2(Lorg/apache/cordova/mediacapture/Capture;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 342
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v8}, Lorg/apache/cordova/mediacapture/Capture;->access$3(Lorg/apache/cordova/mediacapture/Capture;)Lorg/apache/cordova/CallbackContext;

    move-result-object v8

    new-instance v9, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v11, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v11}, Lorg/apache/cordova/mediacapture/Capture;->access$0(Lorg/apache/cordova/mediacapture/Capture;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 351
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_2
    return-void

    .line 314
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v8, "Capture"

    const-string v9, "Can\'t write to external media storage."

    invoke-static {v8, v9}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 317
    :try_start_3
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    iget-object v8, v8, Lorg/apache/cordova/mediacapture/Capture;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 318
    :catch_1
    move-exception v2

    .line 319
    .local v2, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_4
    const-string v8, "Capture"

    const-string v9, "Can\'t write to internal media storage."

    invoke-static {v8, v9}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    iget-object v9, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    const/4 v10, 0x0

    const-string v11, "Error capturing image - no media storage found."

    invoke-static {v9, v10, v11}, Lorg/apache/cordova/mediacapture/Capture;->access$5(Lorg/apache/cordova/mediacapture/Capture;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/mediacapture/Capture;->fail(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 347
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v2    # "ex":Ljava/lang/UnsupportedOperationException;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 349
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->val$that:Lorg/apache/cordova/mediacapture/Capture;

    iget-object v9, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    const-string v10, "Error capturing image."

    invoke-static {v9, v12, v10}, Lorg/apache/cordova/mediacapture/Capture;->access$5(Lorg/apache/cordova/mediacapture/Capture;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/cordova/mediacapture/Capture;->fail(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 329
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v5, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_1

    .line 345
    :cond_1
    iget-object v8, p0, Lorg/apache/cordova/mediacapture/Capture$2;->this$0:Lorg/apache/cordova/mediacapture/Capture;

    invoke-static {v8}, Lorg/apache/cordova/mediacapture/Capture;->access$8(Lorg/apache/cordova/mediacapture/Capture;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2
.end method
