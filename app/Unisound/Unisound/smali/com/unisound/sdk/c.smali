.class public Lcom/unisound/sdk/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "x-wav"

.field public static final b:Ljava/lang/String; = "pcm"

.field public static final c:Ljava/lang/String; = "opus"

.field public static final d:I = 0x10

.field public static final e:I = 0x3e80


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "x-wav"

    iput-object v0, p0, Lcom/unisound/sdk/c;->f:Ljava/lang/String;

    const-string v0, "pcm"

    iput-object v0, p0, Lcom/unisound/sdk/c;->g:Ljava/lang/String;

    const-string v0, "opus"

    iput-object v0, p0, Lcom/unisound/sdk/c;->h:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lcom/unisound/sdk/c;->i:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/unisound/sdk/c;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/c;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/c;->k:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/c;->k:Z

    return v0
.end method
