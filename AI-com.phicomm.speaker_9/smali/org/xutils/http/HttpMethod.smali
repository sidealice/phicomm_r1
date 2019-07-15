.class public final enum Lorg/xutils/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/http/HttpMethod;

.field public static final enum CONNECT:Lorg/xutils/http/HttpMethod;

.field public static final enum COPY:Lorg/xutils/http/HttpMethod;

.field public static final enum DELETE:Lorg/xutils/http/HttpMethod;

.field public static final enum GET:Lorg/xutils/http/HttpMethod;

.field public static final enum HEAD:Lorg/xutils/http/HttpMethod;

.field public static final enum MOVE:Lorg/xutils/http/HttpMethod;

.field public static final enum OPTIONS:Lorg/xutils/http/HttpMethod;

.field public static final enum PATCH:Lorg/xutils/http/HttpMethod;

.field public static final enum POST:Lorg/xutils/http/HttpMethod;

.field public static final enum PUT:Lorg/xutils/http/HttpMethod;

.field public static final enum TRACE:Lorg/xutils/http/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    .line 9
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    .line 10
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "PUT"

    const-string v2, "PUT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    .line 11
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "PATCH"

    const-string v2, "PATCH"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    .line 12
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->HEAD:Lorg/xutils/http/HttpMethod;

    .line 13
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "MOVE"

    const-string v2, "MOVE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->MOVE:Lorg/xutils/http/HttpMethod;

    .line 14
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "COPY"

    const-string v2, "COPY"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->COPY:Lorg/xutils/http/HttpMethod;

    .line 15
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    .line 16
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "OPTIONS"

    const-string v2, "OPTIONS"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->OPTIONS:Lorg/xutils/http/HttpMethod;

    .line 17
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "TRACE"

    const-string v2, "TRACE"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->TRACE:Lorg/xutils/http/HttpMethod;

    .line 18
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "CONNECT"

    const-string v2, "CONNECT"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->CONNECT:Lorg/xutils/http/HttpMethod;

    const/16 v0, 0xb

    .line 7
    new-array v0, v0, [Lorg/xutils/http/HttpMethod;

    sget-object v1, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/xutils/http/HttpMethod;->HEAD:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lorg/xutils/http/HttpMethod;->MOVE:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v8

    sget-object v1, Lorg/xutils/http/HttpMethod;->COPY:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v9

    sget-object v1, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v10

    sget-object v1, Lorg/xutils/http/HttpMethod;->OPTIONS:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v11

    sget-object v1, Lorg/xutils/http/HttpMethod;->TRACE:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v12

    sget-object v1, Lorg/xutils/http/HttpMethod;->CONNECT:Lorg/xutils/http/HttpMethod;

    aput-object v1, v0, v13

    sput-object v0, Lorg/xutils/http/HttpMethod;->$VALUES:[Lorg/xutils/http/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static permitsCache(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    .line 36
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    .line 40
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRetry(Lorg/xutils/http/HttpMethod;)Z
    .locals 1

    .line 32
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 7
    const-class v0, Lorg/xutils/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/http/HttpMethod;

    return-object p0
.end method

.method public static values()[Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 7
    sget-object v0, Lorg/xutils/http/HttpMethod;->$VALUES:[Lorg/xutils/http/HttpMethod;

    invoke-virtual {v0}, [Lorg/xutils/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
