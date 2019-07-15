.class public Lcom/tencent/smtt/sdk/d;
.super Ljava/lang/Object;


# static fields
.field static a:I = 0x5

.field static b:I = 0x10

.field static c:[C = null

.field static d:Ljava/lang/String; = "dex2oat-cmdline"

.field static e:J = 0x1000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/tencent/smtt/sdk/d;->b:I

    new-array v0, v0, [C

    sput-object v0, Lcom/tencent/smtt/sdk/d;->c:[C

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance p0, Lcom/tencent/smtt/utils/d;

    invoke-direct {p0, p1}, Lcom/tencent/smtt/utils/d;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/smtt/sdk/d;->c:[C

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/utils/d;->a([C)I

    sget-object p1, Lcom/tencent/smtt/sdk/d;->c:[C

    sget v0, Lcom/tencent/smtt/sdk/d;->a:I

    aget-char p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/d;->a(Z)V

    sget-wide v0, Lcom/tencent/smtt/sdk/d;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/utils/d;->a(J)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/d;->a(Lcom/tencent/smtt/utils/d;)[C

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    add-int/lit8 v2, v1, 0x1

    aget-object v1, p0, v1

    sget-object v3, Lcom/tencent/smtt/sdk/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static a(Lcom/tencent/smtt/utils/d;)[C
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [C

    new-array v0, v0, [C

    invoke-virtual {p0, v1}, Lcom/tencent/smtt/utils/d;->a([C)I

    const/4 v2, 0x0

    aget-char v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x6f

    if-ne v3, v6, :cond_2

    aget-char v3, v1, v5

    const/16 v6, 0x61

    if-ne v3, v6, :cond_2

    aget-char v3, v1, v4

    const/16 v6, 0x74

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/d;->a([C)I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    aget-char v0, v0, v5

    const/16 v1, 0x34

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/d;->a()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/d;->a([C)I

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string v0, "Invalid art magic %c%c%c"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-char v6, v1, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v3, v2

    aget-char v2, v1, v5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v3, v5

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
