.class public final enum Lcom/huawei/hms/support/log/LogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/support/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum ASSERT:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum DEBUG:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum ERROR:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum INFO:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum NONE:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum OUT:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum VERBOSE:Lcom/huawei/hms/support/log/LogLevel;

.field public static final enum WARN:Lcom/huawei/hms/support/log/LogLevel;

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/huawei/hms/support/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/support/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lcom/huawei/hms/support/log/LogLevel;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->ALL:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->VERBOSE:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->DEBUG:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "INFO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "WARN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->WARN:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "ASSERT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->ASSERT:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "OUT"

    const/16 v10, 0x64

    invoke-direct {v0, v1, v9, v10}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->OUT:Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Lcom/huawei/hms/support/log/LogLevel;

    const-string v1, "NONE"

    const/16 v10, 0x8

    const/16 v11, 0xff

    invoke-direct {v0, v1, v10, v11}, Lcom/huawei/hms/support/log/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->NONE:Lcom/huawei/hms/support/log/LogLevel;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/huawei/hms/support/log/LogLevel;

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->ALL:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->VERBOSE:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->DEBUG:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->WARN:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->ASSERT:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->OUT:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/hms/support/log/LogLevel;->NONE:Lcom/huawei/hms/support/log/LogLevel;

    aput-object v1, v0, v10

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->d:[Lcom/huawei/hms/support/log/LogLevel;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/LogLevel;->b:Ljava/util/Map;

    invoke-static {}, Lcom/huawei/hms/support/log/LogLevel;->values()[Lcom/huawei/hms/support/log/LogLevel;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/huawei/hms/support/log/LogLevel;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v4, Lcom/huawei/hms/support/log/LogLevel;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/huawei/hms/support/log/LogLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hms/support/log/LogLevel;->c:I

    return-void
.end method

.method public static get(I)Lcom/huawei/hms/support/log/LogLevel;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/support/log/LogLevel;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lcom/huawei/hms/support/log/LogLevel;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/support/log/LogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/support/log/LogLevel;
    .locals 1

    const-class v0, Lcom/huawei/hms/support/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/support/log/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/support/log/LogLevel;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->d:[Lcom/huawei/hms/support/log/LogLevel;

    invoke-virtual {v0}, [Lcom/huawei/hms/support/log/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/support/log/LogLevel;

    return-object v0
.end method


# virtual methods
.method public isEnable(Lcom/huawei/hms/support/log/LogLevel;)Z
    .locals 1

    iget p1, p1, Lcom/huawei/hms/support/log/LogLevel;->c:I

    iget v0, p0, Lcom/huawei/hms/support/log/LogLevel;->c:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/log/LogLevel;->c:I

    return v0
.end method
