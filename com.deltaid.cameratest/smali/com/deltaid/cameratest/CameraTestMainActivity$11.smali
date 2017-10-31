.class Lcom/deltaid/cameratest/CameraTestMainActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-static {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Lcom/deltaid/cameratest/CameraTestMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    const-string v1, "Grid Lines On"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Lcom/deltaid/cameratest/CameraTestMainActivity;Z)Z

    const-string v0, "mac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v2}, Lcom/deltaid/cameratest/CameraTestMainActivity;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    const-string v1, "Grid Lines Off"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$11;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Lcom/deltaid/cameratest/CameraTestMainActivity;Z)Z

    goto :goto_0
.end method
