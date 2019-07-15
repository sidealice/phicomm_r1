.class public final enum Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;
.super Ljava/lang/Enum;
.source "MyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/net/interceptor/MyInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

.field public static final enum BASIC:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

.field public static final enum BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

.field public static final enum HEADERS:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

.field public static final enum NONE:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 257
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->NONE:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    .line 268
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BASIC:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    .line 286
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->HEADERS:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    .line 308
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const/4 v0, 0x4

    .line 253
    new-array v0, v0, [Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->NONE:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BASIC:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->HEADERS:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->$VALUES:[Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;
    .locals 1

    .line 253
    const-class v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;
    .locals 1

    .line 253
    sget-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->$VALUES:[Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    return-object v0
.end method
