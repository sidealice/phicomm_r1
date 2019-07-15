.class final synthetic Lcom/phicomm/speaker/presenter/yanry/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a$2;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a$2;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/d;->a:Lcom/phicomm/speaker/presenter/yanry/a$2;

    iput p2, p0, Lcom/phicomm/speaker/presenter/yanry/d;->b:I

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/d;->a:Lcom/phicomm/speaker/presenter/yanry/a$2;

    iget v1, p0, Lcom/phicomm/speaker/presenter/yanry/d;->b:I

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/a$2;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
