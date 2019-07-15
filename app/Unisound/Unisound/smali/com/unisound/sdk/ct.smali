.class public Lcom/unisound/sdk/ct;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:D = 1.0

.field public static final e:I = 0x0

.field public static final f:Ljava/lang/String; = "vprv3.hivoice.cn:80"


# instance fields
.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/ct;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/ct;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ct;->i:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/sdk/ct;->j:Ljava/lang/String;

    return-void
.end method

.method public static c()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ct;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/ct;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ct;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lcom/unisound/sdk/ct;->j:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/unisound/sdk/ct;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ct;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/ct;->h:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ct;->h:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/ct;->g:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "vprv3.hivoice.cn:80"

    return-object v0
.end method
