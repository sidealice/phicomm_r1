.class Lcom/phicomm/speaker/presenter/mqtt/e$1;
.super Ljava/lang/Object;
.source "RecoveryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/e;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/mqtt/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/e;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/e;->c(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/model/d;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$1;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Lcom/phicomm/speaker/presenter/mqtt/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/mqtt/e$1$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/e$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/d;->b(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
