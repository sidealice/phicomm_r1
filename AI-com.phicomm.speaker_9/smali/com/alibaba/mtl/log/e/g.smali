.class public Lcom/alibaba/mtl/log/e/g;
.super Ljava/lang/Object;
.source "KeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/e/g$a;,
        Lcom/alibaba/mtl/log/e/g$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/e/g;


# instance fields
.field private a:Lcom/alibaba/mtl/log/e/g$a;

.field private a:Lcom/alibaba/mtl/log/e/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/alibaba/mtl/log/e/g;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/e/g;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/alibaba/mtl/log/e/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/mtl/log/e/g$b;-><init>(Lcom/alibaba/mtl/log/e/g;Lcom/alibaba/mtl/log/e/g$1;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g$b;

    .line 17
    new-instance v0, Lcom/alibaba/mtl/log/e/g$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/mtl/log/e/g$a;-><init>(Lcom/alibaba/mtl/log/e/g;Lcom/alibaba/mtl/log/e/g$1;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g$a;

    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/e/g;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g$a;

    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/alibaba/mtl/log/e/g;->a:Lcom/alibaba/mtl/log/e/g$b;

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 35
    array-length v0, p1

    if-lez v0, :cond_1

    .line 36
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
