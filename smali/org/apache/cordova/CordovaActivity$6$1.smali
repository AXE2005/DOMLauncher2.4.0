.class Lorg/apache/cordova/CordovaActivity$6$1;
.super Ljava/lang/Object;
.source "CordovaActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CordovaActivity$6;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$6$1;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1044
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$6$1;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v0}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$1;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/CordovaActivity;->access$0(Lorg/apache/cordova/CordovaActivity;Landroid/view/Window;)V

    .line 1047
    :cond_0
    return-void
.end method
