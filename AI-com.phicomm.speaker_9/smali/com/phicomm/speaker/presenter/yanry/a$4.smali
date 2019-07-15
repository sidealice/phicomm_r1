.class Lcom/phicomm/speaker/presenter/yanry/a$4;
.super Lcom/phicomm/speaker/net/a/a;
.source "CustomWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$4;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sz add wake name error(%s): %s."

    const/4 v1, 0x2

    .line 120
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$4;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/g;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    const-string p1, "sz add wake word success."

    const/4 p2, 0x0

    .line 129
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$4;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/h;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/yanry/h;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$4;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method final synthetic b()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$4;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method final synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$4;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
