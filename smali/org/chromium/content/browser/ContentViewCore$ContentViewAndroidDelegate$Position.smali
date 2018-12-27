.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
.super Ljava/lang/Object;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation

.annotation build Lorg/chromium/base/VisibleForTesting;
.end annotation


# instance fields
.field private final mHeight:F

.field private final mWidth:F

.field private final mX:F

.field private final mY:F

.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;FFFF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 166
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->this$1:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    .line 168
    iput p3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    .line 169
    iput p4, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    .line 170
    iput p5, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    .line 171
    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 160
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 160
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 160
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 160
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    return v0
.end method
