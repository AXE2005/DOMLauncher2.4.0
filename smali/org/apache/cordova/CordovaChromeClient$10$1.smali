.class Lorg/apache/cordova/CordovaChromeClient$10$1;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaChromeClient$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CordovaChromeClient$10;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaChromeClient$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaChromeClient$10$1;->this$1:Lorg/apache/cordova/CordovaChromeClient$10;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient$10$1;->this$1:Lorg/apache/cordova/CordovaChromeClient$10;

    invoke-static {v0}, Lorg/apache/cordova/CordovaChromeClient$10;->access$0(Lorg/apache/cordova/CordovaChromeClient$10;)Lorg/apache/cordova/CordovaChromeClient;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "spinner"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    return-void
.end method
