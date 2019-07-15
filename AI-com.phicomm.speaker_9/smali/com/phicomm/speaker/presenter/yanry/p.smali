.class public abstract Lcom/phicomm/speaker/presenter/yanry/p;
.super Lcom/phicomm/speaker/e/c/b;
.source "UpdateWakeNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/phicomm/speaker/presenter/yanry/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method

.method public static c(I)V
    .locals 4

    const-string v0, "unisound mqtt result: %s."

    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/phicomm/speaker/presenter/yanry/p;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/phicomm/speaker/presenter/yanry/p;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/p;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 34
    sget-object v0, Lcom/phicomm/speaker/presenter/yanry/p;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/phicomm/speaker/presenter/yanry/p;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 4

    const-string v0, "unisound http fail: %s."

    const/4 v1, 0x1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/p;->b(I)V

    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "unisound http success: %s."

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/p;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 29
    sput-object p0, Lcom/phicomm/speaker/presenter/yanry/p;->a:Lcom/phicomm/speaker/presenter/yanry/p;

    .line 30
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/phicomm/speaker/e/b;->d(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method protected abstract b(I)V
.end method
