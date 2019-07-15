.class public final Lcom/tencent/bugly/proguard/aj;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static d:[B


# instance fields
.field private a:B

.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;[B)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    .line 24
    iput-byte p1, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    .line 25
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    .line 44
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    .line 45
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->b:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->d:[B

    if-nez v0, :cond_0

    .line 48
    new-array v0, v1, [B

    check-cast v0, [B

    .line 49
    sput-object v0, Lcom/tencent/bugly/proguard/aj;->d:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 52
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->d:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->c(IZ)[B

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .locals 2

    .line 32
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/aj;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a([BI)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
