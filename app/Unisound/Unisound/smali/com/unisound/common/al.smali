.class public Lcom/unisound/common/al;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/common/ak;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/sdk/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/unisound/common/al;->b:I

    const-string v0, "http://10.30.2.13:8089/data-process-service/rtc"

    sput-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    return-void
.end method

.method private b()I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcom/unisound/common/al;->b:I

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/unisound/common/al;->b(I)Lcom/unisound/common/ak;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(I)Lcom/unisound/common/ak;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    invoke-virtual {v0}, Lcom/unisound/common/ak;->c()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/unisound/common/ak;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/unisound/common/al;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/unisound/common/ak;

    invoke-direct {v0, v1, p1}, Lcom/unisound/common/ak;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/unisound/common/ak;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/unisound/common/ak;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    invoke-virtual {v0}, Lcom/unisound/common/ak;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/unisound/common/am;)Lcom/unisound/common/ax;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/common/am;",
            ")",
            "Lcom/unisound/common/ax;"
        }
    .end annotation

    const v4, -0xf626

    new-instance v1, Lcom/unisound/common/ax;

    invoke-direct {v1}, Lcom/unisound/common/ax;-><init>()V

    sget-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unisound/common/ax;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    new-instance v2, Lcom/unisound/client/ErrorCode;

    invoke-direct {v2}, Lcom/unisound/client/ErrorCode;-><init>()V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/common/al;->a()I

    move-result v0

    sget v3, Lcom/unisound/common/al;->b:I

    if-lt v0, v3, :cond_0

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/ci;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/unisound/common/am;->a(Lcom/unisound/common/ax;Lcom/unisound/sdk/ci;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/common/al;->c(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/ci;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/unisound/common/am;->a(Lcom/unisound/common/ax;Lcom/unisound/sdk/ci;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unisound/common/al;->d:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/unisound/common/ax;->a(Ljava/lang/String;Lcom/unisound/common/ak;Ljava/util/List;)V

    invoke-virtual {v1, p3}, Lcom/unisound/common/ax;->a(Lcom/unisound/common/am;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/unisound/common/ak;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/unisound/sdk/as;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/al;->d:Lcom/unisound/sdk/as;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data-process-service/rtc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unisound/common/al;->a(Lcom/unisound/common/ak;)V

    :cond_0
    return-void
.end method
