.class Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector;
.super Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;
.source "LollipopAccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$1;,
        Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected createTextToSpeechWrapper(Landroid/view/View;Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;-><init>(Landroid/view/View;Landroid/content/Context;Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$1;)V

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 34
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 40
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 42
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 44
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 45
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 46
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 48
    return-void
.end method
