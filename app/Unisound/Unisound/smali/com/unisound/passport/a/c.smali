.class public Lcom/unisound/passport/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/unisound/passport/a/c;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/passport/a/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/passport/a/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8

    const-string v0, "00000000000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v0, 0xb

    const-wide/16 v2, 0x3f

    :cond_0
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/unisound/passport/a/c;->a:[C

    and-long v6, p0, v2

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    const/4 v4, 0x6

    ushr-long/2addr p0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
