.class final enum Lcom/phicomm/speaker/zxing/b$a;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/zxing/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/zxing/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/phicomm/speaker/zxing/b$a;

.field public static final enum b:Lcom/phicomm/speaker/zxing/b$a;

.field public static final enum c:Lcom/phicomm/speaker/zxing/b$a;

.field private static final synthetic d:[Lcom/phicomm/speaker/zxing/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/phicomm/speaker/zxing/b$a;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/zxing/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/b$a;->a:Lcom/phicomm/speaker/zxing/b$a;

    .line 60
    new-instance v0, Lcom/phicomm/speaker/zxing/b$a;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/zxing/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/b$a;->b:Lcom/phicomm/speaker/zxing/b$a;

    .line 62
    new-instance v0, Lcom/phicomm/speaker/zxing/b$a;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/zxing/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/zxing/b$a;->c:Lcom/phicomm/speaker/zxing/b$a;

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Lcom/phicomm/speaker/zxing/b$a;

    sget-object v1, Lcom/phicomm/speaker/zxing/b$a;->a:Lcom/phicomm/speaker/zxing/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/zxing/b$a;->b:Lcom/phicomm/speaker/zxing/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/zxing/b$a;->c:Lcom/phicomm/speaker/zxing/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/phicomm/speaker/zxing/b$a;->d:[Lcom/phicomm/speaker/zxing/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/zxing/b$a;
    .locals 1

    .line 56
    const-class v0, Lcom/phicomm/speaker/zxing/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/zxing/b$a;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/zxing/b$a;
    .locals 1

    .line 56
    sget-object v0, Lcom/phicomm/speaker/zxing/b$a;->d:[Lcom/phicomm/speaker/zxing/b$a;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/zxing/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/zxing/b$a;

    return-object v0
.end method
