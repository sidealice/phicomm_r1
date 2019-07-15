.class public interface abstract Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;
.super Ljava/lang/Object;
.source "MyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/net/interceptor/MyInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 315
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method
