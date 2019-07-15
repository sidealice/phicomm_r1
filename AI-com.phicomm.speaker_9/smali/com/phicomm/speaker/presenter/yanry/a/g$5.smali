.class Lcom/phicomm/speaker/presenter/yanry/a/g$5;
.super Lcom/phicomm/speaker/e/c/b;
.source "ReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/time/bean/TimeManageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->b:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 356
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    :cond_0
    return-void
.end method

.method protected a(ILcom/unisound/lib/time/bean/TimeManageBean;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->b:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p2, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$5;->a(ILcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method
