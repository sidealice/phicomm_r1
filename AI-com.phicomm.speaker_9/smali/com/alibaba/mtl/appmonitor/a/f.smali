.class public final enum Lcom/alibaba/mtl/appmonitor/a/f;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/mtl/appmonitor/a/f;",
        ">;"
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String; = "EventType"

.field public static final enum a:Lcom/alibaba/mtl/appmonitor/a/f;

.field private static final synthetic a:[Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum b:Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum c:Lcom/alibaba/mtl/appmonitor/a/f;

.field public static final enum d:Lcom/alibaba/mtl/appmonitor/a/f;


# instance fields
.field private e:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private m:Z

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v7, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v1, "ALARM"

    const-string v5, "alarmData"

    const/4 v2, 0x0

    const v3, 0xffdd

    const/16 v4, 0x1e

    const/16 v6, 0x1388

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v9, "COUNTER"

    const-string v13, "counterData"

    const/4 v10, 0x1

    const v11, 0xffde

    const/16 v12, 0x1e

    const/16 v14, 0x1388

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v2, "OFFLINE_COUNTER"

    const-string v6, "counterData"

    const/4 v3, 0x2

    const v4, 0xfe6d

    const/16 v5, 0x1e

    const/16 v7, 0x1388

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/f;

    const-string v9, "STAT"

    const-string v13, "statData"

    const/4 v10, 0x3

    const v11, 0xffdf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/mtl/appmonitor/a/f;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/alibaba/mtl/appmonitor/a/f;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:[Lcom/alibaba/mtl/appmonitor/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x19

    .line 26
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    const/16 p1, 0xb4

    .line 31
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    .line 39
    iput p3, p0, Lcom/alibaba/mtl/appmonitor/a/f;->e:I

    .line 40
    iput p4, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    .line 42
    iput-object p5, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    .line 43
    iput p6, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    return-void
.end method

.method public static a(I)Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 4

    .line 69
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 71
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()[Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 1

    .line 5
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:[Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, [Lcom/alibaba/mtl/appmonitor/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/mtl/appmonitor/a/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->e:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    return v0
.end method

.method public b(I)V
    .locals 4

    .line 64
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[setTriggerCount]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/f;->t:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->h:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->k:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a/f;->m:Z

    return v0
.end method

.method public setStatisticsInterval(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->i:I

    .line 93
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/f;->j:I

    return-void
.end method
