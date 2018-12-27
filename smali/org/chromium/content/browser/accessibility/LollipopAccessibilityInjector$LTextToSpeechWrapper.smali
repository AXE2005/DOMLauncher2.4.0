.class public Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;
.super Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;
.source "LollipopAccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LTextToSpeechWrapper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$1;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public speak(Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "jsonParams"    # Ljava/lang/String;
    .annotation runtime Lorg/chromium/content/browser/JavascriptInterface;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p3, :cond_1

    .line 68
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 75
    .local v5, "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_0

    .line 79
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 84
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    const/4 v0, 0x0

    .line 87
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_2
    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector$LTextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, p2, v0, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    return v6

    .line 83
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "keyIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    move-object v0, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_2
.end method
