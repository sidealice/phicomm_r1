.class public Lcom/phicomm/speaker/adapter/AnswerAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "AnswerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/phicomm/speaker/bean/CustumBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0b00b7

    .line 20
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const v0, 0x7f0b00b7

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 25
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/AnswerAdapter;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/phicomm/speaker/bean/CustumBean;)V
    .locals 1

    .line 31
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090229

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener(I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 32
    iget-boolean p2, p0, Lcom/phicomm/speaker/adapter/AnswerAdapter;->a:Z

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->a(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/phicomm/speaker/bean/CustumBean;)V

    return-void
.end method
