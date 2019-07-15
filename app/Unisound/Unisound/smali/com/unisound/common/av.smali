.class public Lcom/unisound/common/av;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unisound/common/av;->a:I

    iput v0, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unisound/common/av;->a:I

    iput v0, p0, Lcom/unisound/common/av;->b:I

    iput p2, p0, Lcom/unisound/common/av;->a:I

    iput p1, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/unisound/common/av;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/unisound/common/aw;
    .locals 1

    iget v0, p0, Lcom/unisound/common/av;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/common/aw;->a:Lcom/unisound/common/aw;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/unisound/common/av;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/common/aw;->b:Lcom/unisound/common/aw;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unisound/common/aw;->c:Lcom/unisound/common/aw;

    goto :goto_0
.end method
