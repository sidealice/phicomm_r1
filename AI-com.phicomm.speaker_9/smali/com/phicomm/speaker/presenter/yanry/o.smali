.class final synthetic Lcom/phicomm/speaker/presenter/yanry/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/j$4;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j$4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/o;->a:Lcom/phicomm/speaker/presenter/yanry/j$4;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/o;->a:Lcom/phicomm/speaker/presenter/yanry/j$4;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/j$4;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
