.class Lorg/apache/cordova/file/FileUtils$18;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lorg/apache/cordova/file/FileUtils$FileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$18;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$18;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 419
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "dirname":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils$18;->this$0:Lorg/apache/cordova/file/FileUtils;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v0, v2, v4, v5}, Lorg/apache/cordova/file/FileUtils;->access$7(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 422
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils$18;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 423
    return-void
.end method
