.class public Lcom/phicomm/speaker/views/MyMarqueeTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "MyMarqueeTextView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatTextView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/MyMarqueeTextView;->a:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setControlWhenWindowFocusChanged(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/MyMarqueeTextView;->a:Z

    return-void
.end method
