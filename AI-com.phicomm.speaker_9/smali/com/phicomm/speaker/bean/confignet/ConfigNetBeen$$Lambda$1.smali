.class final synthetic Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/c;


# static fields
.field static final $instance:Lcom/phicomm/speaker/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$1;->$instance:Lcom/phicomm/speaker/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->lambda$setMode$1$ConfigNetBeen(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Z

    move-result p1

    return p1
.end method
