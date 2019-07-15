.class final enum Lorg/eclipse/paho/android/service/i;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/paho/android/service/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/eclipse/paho/android/service/i;

.field public static final enum b:Lorg/eclipse/paho/android/service/i;

.field public static final enum c:Lorg/eclipse/paho/android/service/i;

.field private static final synthetic d:[Lorg/eclipse/paho/android/service/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    .line 27
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    .line 32
    new-instance v0, Lorg/eclipse/paho/android/service/i;

    const-string v1, "NO_RESULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/eclipse/paho/android/service/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/i;->c:Lorg/eclipse/paho/android/service/i;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lorg/eclipse/paho/android/service/i;

    sget-object v1, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/paho/android/service/i;->c:Lorg/eclipse/paho/android/service/i;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/paho/android/service/i;->d:[Lorg/eclipse/paho/android/service/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 18
    const-class v0, Lorg/eclipse/paho/android/service/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/android/service/i;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/paho/android/service/i;
    .locals 1

    .line 18
    sget-object v0, Lorg/eclipse/paho/android/service/i;->d:[Lorg/eclipse/paho/android/service/i;

    invoke-virtual {v0}, [Lorg/eclipse/paho/android/service/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/paho/android/service/i;

    return-object v0
.end method
