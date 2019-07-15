.class public final Lcom/unisound/vui/util/internal/RandomHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandom(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandom(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandom([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputs"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p0

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static getRandomID()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
