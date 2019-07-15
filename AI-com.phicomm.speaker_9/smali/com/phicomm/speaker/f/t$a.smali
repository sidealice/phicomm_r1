.class final enum Lcom/phicomm/speaker/f/t$a;
.super Ljava/lang/Enum;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/f/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/phicomm/speaker/f/t$a;

.field public static final enum b:Lcom/phicomm/speaker/f/t$a;

.field public static final enum c:Lcom/phicomm/speaker/f/t$a;

.field public static final enum d:Lcom/phicomm/speaker/f/t$a;

.field public static final enum e:Lcom/phicomm/speaker/f/t$a;

.field private static final synthetic f:[Lcom/phicomm/speaker/f/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 142
    new-instance v0, Lcom/phicomm/speaker/f/t$a;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/f/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    .line 144
    new-instance v0, Lcom/phicomm/speaker/f/t$a;

    const-string v1, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/f/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->b:Lcom/phicomm/speaker/f/t$a;

    .line 146
    new-instance v0, Lcom/phicomm/speaker/f/t$a;

    const-string v1, "VERBOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/f/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->c:Lcom/phicomm/speaker/f/t$a;

    .line 148
    new-instance v0, Lcom/phicomm/speaker/f/t$a;

    const-string v1, "WARN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/f/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->d:Lcom/phicomm/speaker/f/t$a;

    .line 150
    new-instance v0, Lcom/phicomm/speaker/f/t$a;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/phicomm/speaker/f/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    const/4 v0, 0x5

    .line 140
    new-array v0, v0, [Lcom/phicomm/speaker/f/t$a;

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->a:Lcom/phicomm/speaker/f/t$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->b:Lcom/phicomm/speaker/f/t$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->c:Lcom/phicomm/speaker/f/t$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->d:Lcom/phicomm/speaker/f/t$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phicomm/speaker/f/t$a;->e:Lcom/phicomm/speaker/f/t$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/phicomm/speaker/f/t$a;->f:[Lcom/phicomm/speaker/f/t$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/f/t$a;
    .locals 1

    .line 140
    const-class v0, Lcom/phicomm/speaker/f/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/f/t$a;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/f/t$a;
    .locals 1

    .line 140
    sget-object v0, Lcom/phicomm/speaker/f/t$a;->f:[Lcom/phicomm/speaker/f/t$a;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/f/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/f/t$a;

    return-object v0
.end method
