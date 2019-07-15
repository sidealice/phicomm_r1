.class final enum Lcom/alibaba/mtl/appmonitor/d/b$a;
.super Ljava/lang/Enum;
.source "AccurateSampleCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/mtl/appmonitor/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alibaba/mtl/appmonitor/d/b$a;

.field public static final enum b:Lcom/alibaba/mtl/appmonitor/d/b$a;

.field public static final enum c:Lcom/alibaba/mtl/appmonitor/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/b$a;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d/b$a;->b:Lcom/alibaba/mtl/appmonitor/d/b$a;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/b$a;

    const-string v1, "NOT_IN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d/b$a;->c:Lcom/alibaba/mtl/appmonitor/d/b$a;

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Lcom/alibaba/mtl/appmonitor/d/b$a;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/d/b$a;->b:Lcom/alibaba/mtl/appmonitor/d/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/d/b$a;->c:Lcom/alibaba/mtl/appmonitor/d/b$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d/b$a;->a:[Lcom/alibaba/mtl/appmonitor/d/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
