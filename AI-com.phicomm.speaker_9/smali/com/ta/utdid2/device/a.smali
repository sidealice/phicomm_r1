.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:J

.field private b:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    .line 16
    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    return-wide v0
.end method

.method a(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->b:J

    return-void
.end method

.method b(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->a:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    return-object v0
.end method
