.class Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;
.super Lcom/phicomm/speaker/e/c/b;
.source "ReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g$a;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/graphics/Rect;Landroid/view/View;Lcom/unisound/lib/time/bean/AlarmReminder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/g;

.field final synthetic b:Lcom/unisound/lib/time/bean/AlarmReminder;

.field final synthetic c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g$a;Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 396
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 397
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->g()V

    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "action result: %s."

    const/4 v0, 0x1

    .line 387
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->g()V

    .line 389
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a(Lcom/phicomm/speaker/presenter/yanry/a/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->c:Lcom/phicomm/speaker/presenter/yanry/a/g$a;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 384
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
