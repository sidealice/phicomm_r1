.class public Lcom/unisound/common/w;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/common/x;)I
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/common/x;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/common/x;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/u;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
