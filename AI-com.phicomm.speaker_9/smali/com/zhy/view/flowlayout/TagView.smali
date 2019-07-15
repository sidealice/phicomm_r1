.class public Lcom/zhy/view/flowlayout/TagView;
.super Landroid/widget/FrameLayout;
.source "TagView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/zhy/view/flowlayout/TagView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTagView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/zhy/view/flowlayout/TagView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/zhy/view/flowlayout/TagView;->a:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/zhy/view/flowlayout/TagView;->b:[I

    invoke-static {p1, v0}, Lcom/zhy/view/flowlayout/TagView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/zhy/view/flowlayout/TagView;->a:Z

    if-eq v0, p1, :cond_0

    .line 48
    iput-boolean p1, p0, Lcom/zhy/view/flowlayout/TagView;->a:Z

    .line 49
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/zhy/view/flowlayout/TagView;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    return-void
.end method
