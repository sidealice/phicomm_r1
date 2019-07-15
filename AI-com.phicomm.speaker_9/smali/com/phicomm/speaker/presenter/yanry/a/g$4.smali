.class Lcom/phicomm/speaker/presenter/yanry/a/g$4;
.super Lcom/phicomm/speaker/e/c/b;
.source "ReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;->b()V
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(ILcom/unisound/lib/time/bean/TimeManageBean;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p2, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$4;->a(ILcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method
