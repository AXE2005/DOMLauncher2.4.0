.class public Lorg/chromium/ui/DropdownAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/chromium/ui/DropdownItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAreAllItemsEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mSeparators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/ui/DropdownItem;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/ui/DropdownItem;>;"
    .local p3, "separators":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget v0, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lorg/chromium/ui/DropdownAdapter;->checkAreAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/chromium/ui/DropdownItem;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Lorg/chromium/ui/DropdownItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lorg/chromium/ui/DropdownItem;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "separators":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget v0, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 42
    iput-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    .line 43
    iput-object p1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lorg/chromium/ui/DropdownAdapter;->checkAreAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    .line 45
    return-void
.end method

.method private checkAreAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/DropdownItem;

    .line 50
    .local v1, "item":Lorg/chromium/ui/DropdownItem;
    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 54
    .end local v1    # "item":Lorg/chromium/ui/DropdownItem;
    :goto_1
    return v2

    .line 48
    .restart local v1    # "item":Lorg/chromium/ui/DropdownItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "item":Lorg/chromium/ui/DropdownItem;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    move-object/from16 v7, p2

    .line 60
    .local v7, "layout":Landroid/view/View;
    if-nez p2, :cond_0

    .line 61
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 63
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v11, Lorg/chromium/ui/R$layout;->dropdown_item:I

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 64
    new-instance v11, Lorg/chromium/ui/DropdownDividerDrawable;

    invoke-direct {v11}, Lorg/chromium/ui/DropdownDividerDrawable;-><init>()V

    invoke-static {v7, v11}, Lorg/chromium/base/ApiCompatibilityUtils;->setBackgroundForView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownDividerDrawable;

    .line 68
    .local v0, "divider":Lorg/chromium/ui/DropdownDividerDrawable;
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lorg/chromium/ui/R$dimen;->dropdown_item_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 69
    .local v2, "height":I
    if-nez p1, :cond_1

    .line 70
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    .line 90
    :goto_0
    sget v11, Lorg/chromium/ui/R$id;->dropdown_label_wrapper:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 91
    .local v10, "wrapper":Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/ui/DropdownItem;

    .line 95
    .local v5, "item":Lorg/chromium/ui/DropdownItem;
    sget v11, Lorg/chromium/ui/R$id;->dropdown_label:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 96
    .local v6, "labelView":Landroid/widget/TextView;
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 100
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 105
    :goto_1
    sget v11, Lorg/chromium/ui/R$id;->dropdown_sublabel:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 106
    .local v9, "sublabelView":Landroid/widget/TextView;
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->getSublabel()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "sublabel":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 108
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_2
    sget v11, Lorg/chromium/ui/R$id;->dropdown_icon:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 115
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v11

    if-nez v11, :cond_5

    .line 116
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_3
    return-object v7

    .line 72
    .end local v3    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "item":Lorg/chromium/ui/DropdownItem;
    .end local v6    # "labelView":Landroid/widget/TextView;
    .end local v8    # "sublabel":Ljava/lang/CharSequence;
    .end local v9    # "sublabelView":Landroid/widget/TextView;
    .end local v10    # "wrapper":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lorg/chromium/ui/R$dimen;->dropdown_item_divider_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 74
    .local v1, "dividerHeight":I
    add-int/2addr v2, v1

    .line 75
    invoke-virtual {v0, v1}, Lorg/chromium/ui/DropdownDividerDrawable;->setHeight(I)V

    .line 76
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 77
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lorg/chromium/ui/R$color;->dropdown_dark_divider_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 80
    :cond_2
    iget-object v11, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lorg/chromium/ui/R$color;->dropdown_divider_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "dividerHeight":I
    .restart local v5    # "item":Lorg/chromium/ui/DropdownItem;
    .restart local v6    # "labelView":Landroid/widget/TextView;
    .restart local v10    # "wrapper":Landroid/view/View;
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 110
    .restart local v8    # "sublabel":Ljava/lang/CharSequence;
    .restart local v9    # "sublabelView":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 118
    .restart local v3    # "iconView":Landroid/widget/ImageView;
    :cond_5
    invoke-interface {v5}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownItem;

    .line 134
    .local v0, "item":Lorg/chromium/ui/DropdownItem;
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
