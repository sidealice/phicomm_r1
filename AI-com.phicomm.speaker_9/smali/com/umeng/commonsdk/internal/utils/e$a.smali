.class public final enum Lcom/umeng/commonsdk/internal/utils/e$a;
.super Ljava/lang/Enum;
.source "ExecShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/internal/utils/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/internal/utils/e$a;

.field private static final synthetic c:[Lcom/umeng/commonsdk/internal/utils/e$a;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/e$a;

    const-string v1, "check_su_binary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "su"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/umeng/commonsdk/internal/utils/e$a;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    .line 15
    new-array v0, v5, [Lcom/umeng/commonsdk/internal/utils/e$a;

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/e$a;->c:[Lcom/umeng/commonsdk/internal/utils/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/umeng/commonsdk/internal/utils/e$a;->b:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/internal/utils/e$a;
    .locals 1

    .line 15
    const-class v0, Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/internal/utils/e$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/internal/utils/e$a;
    .locals 1

    .line 15
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/e$a;->c:[Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/internal/utils/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/internal/utils/e$a;

    return-object v0
.end method
