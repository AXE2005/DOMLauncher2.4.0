.class public Lnet/yoik/cordova/plugins/screenorientation/YoikScreenOrientation;
.super Lorg/apache/cordova/CordovaPlugin;
.source "YoikScreenOrientation.java"


# static fields
.field private static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final LANDSCAPE_PRIMARY:Ljava/lang/String; = "landscape-primary"

.field private static final LANDSCAPE_SECONDARY:Ljava/lang/String; = "landscape-secondary"

.field private static final PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final PORTRAIT_PRIMARY:Ljava/lang/String; = "portrait-primary"

.field private static final PORTRAIT_SECONDARY:Ljava/lang/String; = "portrait-secondary"

.field private static final TAG:Ljava/lang/String; = "YoikScreenOrientation"

.field private static final UNLOCKED:Ljava/lang/String; = "unlocked"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private routeScreenOrientation(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 73
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "orientation":Ljava/lang/String;
    const-string v5, "YoikScreenOrientation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Requested ScreenOrientation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v5, p0, Lnet/yoik/cordova/plugins/screenorientation/YoikScreenOrientation;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 79
    .local v1, "activity":Landroid/app/Activity;
    const-string v5, "unlocked"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 100
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "orientation":Ljava/lang/String;
    :goto_1
    return v3

    .line 81
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v2    # "orientation":Ljava/lang/String;
    :cond_1
    const-string v5, "landscape-primary"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v4, "portrait-primary"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v4, "landscape"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v4, "portrait"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 89
    :cond_5
    const-string v4, "landscape-secondary"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 91
    :cond_6
    const-string v4, "portrait-secondary"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 99
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "orientation":Ljava/lang/String;
    :cond_7
    const-string v3, "ScreenOrientation not recognised"

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    move v3, v4

    .line 100
    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 55
    const-string v0, "YoikScreenOrientation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "screenOrientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p2, p3}, Lnet/yoik/cordova/plugins/screenorientation/YoikScreenOrientation;->routeScreenOrientation(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string v0, "action not recognised"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method
