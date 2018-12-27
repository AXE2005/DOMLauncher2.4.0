.class public Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
.super Ljava/lang/Object;
.source "ColorChooserAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "web_contents_delegate_android"
.end annotation


# instance fields
.field private final mDialog:Lorg/chromium/ui/ColorPickerDialog;

.field private final mNativeColorChooserAndroid:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;I[Lorg/chromium/ui/ColorSuggestion;)V
    .locals 2
    .param p1, "nativeColorChooserAndroid"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "initialColor"    # I
    .param p5, "suggestions"    # [Lorg/chromium/ui/ColorSuggestion;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;-><init>(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)V

    .line 36
    .local v0, "listener":Lorg/chromium/ui/OnColorChangedListener;
    iput-wide p1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:J

    .line 37
    new-instance v1, Lorg/chromium/ui/ColorPickerDialog;

    invoke-direct {v1, p3, v0, p4, p5}, Lorg/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/ui/OnColorChangedListener;I[Lorg/chromium/ui/ColorSuggestion;)V

    iput-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)Lorg/chromium/ui/ColorPickerDialog;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;JI)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->nativeOnColorChosen(JI)V

    return-void
.end method

.method private static addToColorSuggestionArray([Lorg/chromium/ui/ColorSuggestion;IILjava/lang/String;)V
    .locals 1
    .param p0, "array"    # [Lorg/chromium/ui/ColorSuggestion;
    .param p1, "index"    # I
    .param p2, "color"    # I
    .param p3, "label"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/chromium/ui/ColorSuggestion;

    invoke-direct {v0, p2, p3}, Lorg/chromium/ui/ColorSuggestion;-><init>(ILjava/lang/String;)V

    aput-object v0, p0, p1

    .line 78
    return-void
.end method

.method public static createColorChooserAndroid(JLorg/chromium/ui/base/WindowAndroid;I[Lorg/chromium/ui/ColorSuggestion;)Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    .locals 6
    .param p0, "nativeColorChooserAndroid"    # J
    .param p2, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p3, "initialColor"    # I
    .param p4, "suggestions"    # [Lorg/chromium/ui/ColorSuggestion;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 56
    .local v3, "windowAndroidActivity":Landroid/app/Activity;
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    move-wide v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;-><init>(JLandroid/content/Context;I[Lorg/chromium/ui/ColorSuggestion;)V

    .line 59
    .local v0, "chooser":Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    invoke-direct {v0}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->openColorChooser()V

    goto :goto_0
.end method

.method private static createColorSuggestionArray(I)[Lorg/chromium/ui/ColorSuggestion;
    .locals 1
    .param p0, "size"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 65
    new-array v0, p0, [Lorg/chromium/ui/ColorSuggestion;

    return-object v0
.end method

.method private native nativeOnColorChosen(JI)V
.end method

.method private openColorChooser()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/chromium/ui/ColorPickerDialog;->show()V

    .line 42
    return-void
.end method


# virtual methods
.method public closeColorChooser()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/chromium/ui/ColorPickerDialog;->dismiss()V

    .line 47
    return-void
.end method
