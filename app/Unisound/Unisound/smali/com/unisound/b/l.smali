.class public Lcom/unisound/b/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/l;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/l;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/l;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/l;->c:Ljava/lang/String;

    return-void
.end method

.method private c(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/unisound/b/l;->b:J

    invoke-direct {p0, p1, p2}, Lcom/unisound/b/l;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/b/l;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseHeaderTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/l;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/b/l;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    iput-wide p1, p0, Lcom/unisound/b/l;->d:J

    invoke-direct {p0, p1, p2}, Lcom/unisound/b/l;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/b/l;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCurrentSystemTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/b/l;->d:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/l;->e:Ljava/lang/String;

    return-object v0
.end method
