.class public final Lcom/unisound/common/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/unisound/common/l;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/unisound/common/l;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/common/q;->a:Lcom/unisound/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/common/q;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/unisound/common/q;->c:J

    iput-object p5, p0, Lcom/unisound/common/q;->d:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/common/l;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/unisound/common/m;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/unisound/common/q;-><init>(Lcom/unisound/common/l;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/common/n;
    .locals 4

    iget-object v0, p0, Lcom/unisound/common/q;->a:Lcom/unisound/common/l;

    iget-object v1, p0, Lcom/unisound/common/q;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/unisound/common/q;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;Ljava/lang/String;J)Lcom/unisound/common/n;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/q;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/common/q;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/l;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/unisound/common/q;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/unisound/common/l;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
