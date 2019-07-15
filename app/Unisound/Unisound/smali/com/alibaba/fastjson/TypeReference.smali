.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LIST_STRING:Ljava/lang/reflect/Type;


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/fastjson/TypeReference$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/TypeReference$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/TypeReference$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->LIST_STRING:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 11
    .local p0, "this":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 14
    .local v0, "superClass":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 15
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
