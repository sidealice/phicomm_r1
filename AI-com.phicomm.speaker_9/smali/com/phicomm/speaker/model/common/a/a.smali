.class public abstract Lcom/phicomm/speaker/model/common/a/a;
.super Landroid/widget/BaseAdapter;
.source "CommonAdapter.java"

# interfaces
.implements Lcom/phicomm/speaker/model/common/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/model/common/a/g;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b(Lcom/phicomm/speaker/model/common/a/g;I)V
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-static {p2, p3, p1, p0}, Lcom/phicomm/speaker/model/common/a/g;->a(Landroid/view/View;Landroid/view/ViewGroup;ILcom/phicomm/speaker/model/common/a/h;)Lcom/phicomm/speaker/model/common/a/g;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/model/common/a/a;->b(Lcom/phicomm/speaker/model/common/a/g;I)V

    .line 21
    invoke-virtual {p2}, Lcom/phicomm/speaker/model/common/a/g;->a()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
