.class public abstract Lorg/chromium/ui/picker/TwoFieldDatePicker;
.super Landroid/widget/FrameLayout;
.source "TwoFieldDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;
    }
.end annotation


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthOrWeekChangedListener:Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;

.field private final mPositionInYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinner:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const/4 v2, 0x0

    const v3, 0x101035c

    invoke-direct {p0, p1, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lorg/chromium/ui/R$layout;->two_field_date_picker:I

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    new-instance v1, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;

    invoke-direct {v1, p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker$1;-><init>(Lorg/chromium/ui/picker/TwoFieldDatePicker;)V

    .line 94
    .local v1, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 95
    cmpl-double v2, p2, p4

    if-ltz v2, :cond_1

    .line 96
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 97
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 98
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 99
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v3, 0x270f

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 106
    :goto_0
    sget v2, Lorg/chromium/ui/R$id;->position_in_year:I

    invoke-virtual {p0, v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    .line 107
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 108
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 111
    sget v2, Lorg/chromium/ui/R$id;->year:I

    invoke-virtual {p0, v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 112
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 113
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->reorderSpinners()V

    .line 121
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getDateForValue(D)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 102
    invoke-virtual {p0, p4, p5}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getDateForValue(D)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/ui/picker/TwoFieldDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/picker/TwoFieldDatePicker;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/picker/TwoFieldDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/picker/TwoFieldDatePicker;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private reorderSpinners()V
    .locals 9

    .prologue
    const/16 v8, 0x27

    .line 130
    sget v6, Lorg/chromium/ui/R$id;->pickers:I

    invoke-virtual {p0, v6}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 131
    .local v3, "pickers":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "yyyyMMMdd"

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "pattern":Ljava/lang/String;
    const/4 v4, 0x0

    .line 137
    .local v4, "pos_inserted":Z
    const/4 v5, 0x0

    .line 139
    .local v5, "year_inserted":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "ch":C
    if-ne v0, v8, :cond_0

    .line 142
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 143
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 144
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad quoting in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_0
    const/16 v6, 0x4d

    if-eq v0, v6, :cond_1

    const/16 v6, 0x4c

    if-ne v0, v6, :cond_3

    :cond_1
    if-nez v4, :cond_3

    .line 147
    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const/4 v4, 0x1

    .line 139
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_3
    const/16 v6, 0x79

    if-ne v0, v6, :cond_2

    if-nez v5, :cond_2

    .line 150
    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    const/4 v5, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "ch":C
    :cond_4
    if-nez v4, :cond_5

    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    :cond_5
    if-nez v5, :cond_6

    iget-object v6, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_6
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method protected getCurrentDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method protected abstract getDateForValue(D)Ljava/util/Calendar;
.end method

.method protected getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method protected abstract getMaxPositionInYear(I)I
.end method

.method protected abstract getMaxYear()I
.end method

.method protected getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method protected abstract getMinPositionInYear(I)I
.end method

.method protected abstract getMinYear()I
.end method

.method public abstract getPositionInYear()I
.end method

.method protected getPositionInYearSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method protected getYearSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public init(IILorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "positionInYear"    # I
    .param p3, "onMonthOrWeekChangedListener"    # Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;

    .prologue
    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->setCurrentDate(II)V

    .line 171
    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->updateSpinners()V

    .line 172
    iput-object p3, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMonthOrWeekChangedListener:Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;

    .line 173
    return-void
.end method

.method public isNewDate(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "positionInYear"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getPositionInYear()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDateChanged()V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->sendAccessibilityEvent(I)V

    .line 293
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMonthOrWeekChangedListener:Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMonthOrWeekChangedListener:Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getPositionInYear()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;->onMonthOrWeekChanged(Lorg/chromium/ui/picker/TwoFieldDatePicker;II)V

    .line 296
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 220
    const/16 v0, 0x14

    .line 221
    .local v0, "flags":I
    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method protected abstract setCurrentDate(II)V
.end method

.method protected setCurrentDate(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 208
    return-void
.end method

.method public updateDate(II)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "positionInYear"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->isNewDate(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->setCurrentDate(II)V

    .line 196
    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->updateSpinners()V

    .line 197
    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method

.method protected updateSpinners()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMinPositionInYear(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 274
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMaxPositionInYear(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 275
    iget-object v2, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 279
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMinYear()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 280
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getMaxYear()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 281
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 284
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 285
    iget-object v0, p0, Lorg/chromium/ui/picker/TwoFieldDatePicker;->mPositionInYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->getPositionInYear()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 286
    return-void

    :cond_0
    move v0, v1

    .line 275
    goto :goto_0
.end method
