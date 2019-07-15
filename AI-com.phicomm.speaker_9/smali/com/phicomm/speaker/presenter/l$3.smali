.class Lcom/phicomm/speaker/presenter/l$3;
.super Lcom/phicomm/speaker/net/a/b;
.source "OtaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/RomUpdateBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/l;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/l;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->b(Lcom/phicomm/speaker/presenter/l;)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/l;->a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/phicomm/speaker/bean/RomUpdateBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/l$3;->a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->b(Lcom/phicomm/speaker/presenter/l;)V

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$3;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
