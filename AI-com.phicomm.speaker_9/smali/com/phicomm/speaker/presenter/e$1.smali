.class Lcom/phicomm/speaker/presenter/e$1;
.super Ljava/lang/Object;
.source "HomePagePresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/e;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/e$1;->a:Lcom/phicomm/speaker/presenter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const-string p1, "getUserCurDevice"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onResult deviceStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e$1;->a:Lcom/phicomm/speaker/presenter/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/phicomm/speaker/presenter/e;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    const-string p1, "getUserCurDevice"

    const-string p2, " onFailed"

    .line 184
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e$1;->a:Lcom/phicomm/speaker/presenter/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/e;->b(Lcom/phicomm/speaker/presenter/e;)V

    return-void
.end method
