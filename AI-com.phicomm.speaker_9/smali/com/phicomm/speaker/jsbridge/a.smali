.class public Lcom/phicomm/speaker/jsbridge/a;
.super Ljava/lang/Object;
.source "NativeModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/phicomm/speaker/f/u;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 31
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->b(Ljava/lang/String;)V

    return-void
.end method
