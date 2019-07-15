.class final Lretrofit2/DefaultCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "DefaultCallAdapterFactory.java"


# static fields
.field static final INSTANCE:Lretrofit2/CallAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0}, Lretrofit2/DefaultCallAdapterFactory;-><init>()V

    sput-object v0, Lretrofit2/DefaultCallAdapterFactory;->INSTANCE:Lretrofit2/CallAdapter$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 3
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lretrofit2/DefaultCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Call;

    if-eq v1, v2, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-static {p1}, Lretrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 36
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit2/DefaultCallAdapterFactory$1;

    invoke-direct {v1, p0, v0}, Lretrofit2/DefaultCallAdapterFactory$1;-><init>(Lretrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
