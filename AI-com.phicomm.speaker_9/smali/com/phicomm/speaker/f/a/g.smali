.class final synthetic Lcom/phicomm/speaker/f/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/b;


# instance fields
.field private final a:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

.field private final b:Landroid/app/Activity;

.field private final c:Z

.field private final d:Lcom/phicomm/speaker/presenter/yanry/confignet/u;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;Landroid/app/Activity;ZLcom/phicomm/speaker/presenter/yanry/confignet/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/f/a/g;->a:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    iput-object p2, p0, Lcom/phicomm/speaker/f/a/g;->b:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/phicomm/speaker/f/a/g;->c:Z

    iput-object p4, p0, Lcom/phicomm/speaker/f/a/g;->d:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    iget-object v0, p0, Lcom/phicomm/speaker/f/a/g;->a:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    iget-object v1, p0, Lcom/phicomm/speaker/f/a/g;->b:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/phicomm/speaker/f/a/g;->c:Z

    iget-object v3, p0, Lcom/phicomm/speaker/f/a/g;->d:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;Landroid/app/Activity;ZLcom/phicomm/speaker/presenter/yanry/confignet/u;II)V

    return-void
.end method
